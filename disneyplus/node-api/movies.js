const express = require('express')
const { Pool } = require('pg')
const cors = require('cors')

// Create an Express application
const app = express();

//CORS init
app.use(cors());

// PostgreSQL database configuration
const pool = new Pool({
    user: process.env.USERDB,
    host: process.env.HOSTDB, // This is the name of the PostgreSQL service in the Docker Compose network
    database: process.env.NAMEDB,
    password: process.env.PASSDB,
    port: 5432,
  });

//CORS init


// Define a route to fetch data from the database
app.get('/trending/all/day', async (req, res) => {
    try { 
      // Query the database for all movies
      const { rows } = await pool.query('SELECT * FROM movies')
      const trending = {
        results : rows
      }
      // Send the retrieved movies as JSON response
      res.json(trending)
    } catch (err) {
      console.error('Error executing query', err)
      res.status(500).json({ error: 'Internal Server Error' })
    }
  });
  
  // Start the Express server
  const PORT = process.env.PORT || 3000

  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
  });
const express = require('express');
const app = express();
const port = process.env.PORT || 3500;

app.get("/", (req, res) => {
    res.send("<h1>Express demo app!</h1> <h4>Message: Success</h4> <p>Version 2.0<p/>");
  }
);


app.get('/products', (req,res)=>{
    res.send([
        {
            productId: 1,
            price: 100,
            name: "Product 1"
        },
        {
            productId: 2,
            price: 200,
            name: "Product 2"
        },
    ]);
} )

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
}
);
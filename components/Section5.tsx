import React from 'react'

export default function Section5() {
  const products = [
    { name: 'Audira One', price: '₹4,499', image: '/images/green.png' },
    { name: 'Audira Plus', price: '₹7,499', image: null },
    { name: 'Audira Max Pro', price: '₹11,499', image: '/images/black.png' },
  ]

  return (
    <section id="section5">
      <h2 className="heading">Top Picks</h2>
      <div className="product-section">
        {products.map((product, index) => (
          <div key={index} className="product">
            {product.image && (
              <img 
                src={product.image} 
                alt={product.name}
              />
            )}
            <div className="name">{product.name}</div>
            <div className="price">{product.price}</div>
          </div>
        ))}
      </div>
    </section>
  )
}

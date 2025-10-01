import React from 'react'

export default function Section2() {
  return (
    <section id="section2">
      <div className="content-wrapper">
        <h2 className="heading">True Clarity</h2>
        <p>
          Engineered for clarity, comfort, and immersive sound — Audira
          redefines your listening experience with style and performance
          in perfect harmony.
        </p>
        <a href="#" className="btn radius">Buy Now</a>
      </div>

      <div className="feature-wrapper">
        <div className="feature-box radius">
          <div className="feature-name">
            Crystal-Clear Audio
          </div>
          <div className="feature-detail">
            Hear every detail with balanced bass and studio-quality mids
            and highs.
          </div>
        </div>
        <div className="feature-box radius">
          <div className="feature-name">
            All-Day Comfort
          </div>
          <div className="feature-detail">
            Lightweight build with plush ear cushions and ergonomic fit.
          </div>
        </div>
        <div className="feature-box radius">
          <div className="feature-name">
            40+ Hour Battery Life
          </div>
          <div className="feature-detail">
            Long-lasting performance, wherever you go.
          </div>
        </div>
      </div>
    </section>
  )
}

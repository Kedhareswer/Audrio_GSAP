import React from 'react'

export default function Section3() {
  return (
    <section id="section3">
      <h2 className="heading">Masterbeat</h2>
      <div className="content-wrapper">
        <video width="500" height="auto" autoPlay loop muted className="radius">
          <source src="/images/video.mp4" type="video/mp4" />
        </video>
        <div className="content">
          <p>
            Crafted for the modern audiophile, Audira headphones deliver
            sound so rich, it pulses through your senses. From crisp highs
            to deep, rolling bass—you don&apos;t just hear it, you feel it.
          </p>
          <p>
            Whether you&apos;re in focus mode or free flow, the precision-tuned
            audio adapts to your pace. With Masterbeat, music becomes your
            personal soundtrack—bold, immersive, unforgettable.
          </p>
        </div>
      </div>
    </section>
  )
}

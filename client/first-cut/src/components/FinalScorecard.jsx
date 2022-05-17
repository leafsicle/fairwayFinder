import React from 'react'

const FinalScorecard = () => {
  return (
    <table class="table table-bordered table-striped table-responsive table-hover">
    <thead>
      <tr>
        <th scope="col">Hole</th>
        <th scope="col">slope</th>
        <th scope="col">rate</th>
        <th scope="col">1</th>
        <th scope="col">2</th>
        <th scope="col">3</th>
        <th scope="col">4</th>
        <th scope="col">5</th>
        <th scope="col">6</th>
        <th scope="col">7</th>
        <th scope="col">8</th>
        <th scope="col">9</th>
        <th scope="col">total</th>
        <th scope="col">HCAP</th>
        <th scope="col">Net</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row" colSpan={3}>Green Tea?</th>
        <td>133</td>
        <td>393</td>
        <td>393</td>
        <td>393</td>
        <td>333</td>
        <td>393</td>
        <td>393</td>
        <td>666</td>
        <td>666</td>
        <td>3333</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
      <th scope="row" colSpan={3}>PAR</th>
        <td>1</td>
        <td>2</td>
        <td>3</td>
        <td>4</td>
        <td>5</td>
        <td>6</td>
        <td>7</td>
        <td>8</td>
        <td>9</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <th scope="row" colSpan={3}>HCAP</th>
        <td>73.8</td>
        <td>133</td>
        <td>393</td>
        <td>393</td>
        <td>393</td>
        <td>333</td>
        <td>393</td>
        <td>393</td>
        <td>666</td>
        <td>393</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
      <th scope="row" colSpan={3} className="fst-italic">Tiger Woods</th>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>

    </tbody>
  </table>
  )
}

export default FinalScorecard
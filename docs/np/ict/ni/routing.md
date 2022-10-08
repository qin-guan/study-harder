# Routing

## Static routing

## Dynamic routing

* Minimum configuration and setup required
* Routers are automagically discovered and maintained through the exchange of routing information
* Routing decisions are made on dynamically learned routes

There are two classes of routing protocols --- distance vector and link state.

### Distance vector routing

* Each router informs neighbors of its entire routing table periodically
* Routing table consists of
  * Destination
  * Cost
* Router selects neighbor advertising lowest cost

> Once all routers have a full view of the network, the network is said to have converged

#### Routing Information Protocol (RIP)

* Uses hop count as cost
* Max hop count is 16

Routing table

| Network | Destination network address | Next hop IP / outgoing interface | Metric |
|---------|-----------------------------|----------------------------------|--------|
| A       | 192.168.5.0                 | Directly connected               | 2      |

#### Open Shortest Path First (OSPF)

* Uses cost as metric
  * Speed
  * Delay
  * Reliability

##### Comparison with RIP

* More realistic factors taken into account to calculate cost
* Updates as soon as there's a change instead of at intervals 
  * Faster convergence
* No hop count limit 
  * Suitable for large networks
* Less bandwidth consumption  

## Comparison 

<table>
  <thead>
    <tr>
      <th></th>
      <th>Static routing</th>
      <th>Dynamic routing</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Advantages</td>
      <td>
        <ul>
          <li>
            Traffic can be forced to take a more secure path
          </li>
          <li>
            Less network overhead (no need to send routing information)
          </li>
        </ul>
      </td>
      <td>
        <ul>
          <li>
            Lesser configuration compared to static routing
          </li>
          <li>
            Able to configure redundant paths with STP/RSTP
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Disadvantages</td>
      <td>
        <ul>
          <li>
            Each network has to be configured manually -> less flexibility
          </li>
          <li>
            No redundancy for failure of links
          </li>
          <li>
            Need to reconfigure most routers if there's a change in network
          </li>
          <li>
            Not suitable for large networks
          </li>
        </ul>
      </td>
      <td>
        <ul>
          <li>
            More overhead traffic (need to send routing information)
            <ul>
              <li>RIP: every 30 seconds</li>
            </ul>
          </li>
          <li>
            Unable to manually specify routes -> less flexibility compared to static routing
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

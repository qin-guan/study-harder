# Structured cabling

## Addresses

* Physical address
  * Unique ID hard coded into the NIC
  * Comprises 48 bits/12 hex digits

* Logical address
  * Assigned by software
  * Either
    * IP addresses
    * Port addresses

### Layers of addresses

* Application
  * HTTP, DNS
* Transport
  * TCP, UDP
* Internet
  * IP
* Network interface
  * Ethernet, WLAN

## Subsystems of structured cabling

1. Demarcation point / entrance facility
   * Contains demarcation point at which outdoor cabling (from ISP) interfaces with on premise (backbone) cabling

2. Equipment room
   * Center for voice and data network 
   * Contains servers, network equipment, patch panels etc 
   * Services entire building

3. Telecommunications room 
   * ER feeds one or more telecomm rooms
   * Backbone cabling -> horizontal cabling 
   * Houses terminations of horizontal and backbone cabling to connecting hardware such as patch panels

4. Backbone cabling
   * Usually fiber optic

5. Horizontal cabling
   * Distribute cables from TR to the work area 
   * Usually UTP cables

6. Work area 
   * Area serviced by an individual TR

## Types of Ethernet

### Legacy Ethernet - 10Mbps

| Type            | Standard        | Cabling Type                 | Distance |
|-----------------|-----------------|------------------------------|----------|
| 10BASE5 Thinnet | "Original" 1980 | 50 Ohm Thick Coaxial N Style | 500m     |
| 10BASE2 Thinnet | 802.3a-1985     | 50 Ihm Thin Coaxial BNC      | 185m     |
| 10BASE-T        | 802.3i-1990     | 100 Ohm UTP RJ45             | 100m     |

### Fast Ethernet - 100Mbps

| Type       | Standard    | Cabling Type                                    | Distance |
|------------|-------------|-------------------------------------------------|----------|
| 100BASE-TX | 802.3u-1995 | 100 Ohm UTP RJ45 <br> Two pairs of twisted-pair | 100m     |
| 100BASE-FX | 802.3u-1995 | Multimode Fiber Optic                           | 412m     |

### Gigabit Ethernet - 1000Mbps or 1Gps

<table class="tg">
  <thead>
    <tr>
      <th class="tg-9wq8" rowspan="2"><span style="font-weight:bold">Type</span></th>
      <th class="tg-9wq8" rowspan="2"><span style="font-weight:bold">Standard</span></th>
      <th class="tg-9wq8" colspan="2"><span style="font-weight:bold">Cabling Type</span></th>
      <th class="tg-9wq8" rowspan="2"><span style="font-weight:bold">Distance</span></th>
    </tr>
    <tr>
      <th class="tg-9wq8"><span style="font-weight:bold">Medium</span></th>
      <th class="tg-9wq8"><span style="font-weight:bold">Modal Bandwidth</span></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="tg-9wq8" rowspan="4">1000BASE-SX</td>
      <td class="tg-lboi" rowspan="4">802.3z-1998</td>
      <td class="tg-0pky">62.5um MMF</td>
      <td class="tg-c3ow">160 MHz/km</td>
      <td class="tg-c3ow">220m</td>
    </tr>
    <tr>
      <td class="tg-0lax"><span style="font-weight:400;font-style:normal">62.5um MMF</span></td>
      <td class="tg-baqh">200 MHz/km</td>
      <td class="tg-baqh">275m</td>
    </tr>
    <tr>
      <td class="tg-0lax">50um MMF</td>
      <td class="tg-baqh">400 MHz/km</td>
      <td class="tg-baqh">500m</td>
    </tr>
    <tr>
      <td class="tg-0lax">50um MMF</td>
      <td class="tg-baqh">500 MHz/km</td>
      <td class="tg-baqh">550m</td>
    </tr>
    <tr>
      <td class="tg-nrix" rowspan="4">1000BASE-LX</td>
      <td class="tg-nrix" rowspan="4">802.3z-1998</td>
      <td class="tg-0lax">62.5um MMF</td>
      <td class="tg-baqh">500 MHz/km</td>
      <td class="tg-baqh">550m</td>
    </tr>
    <tr>
      <td class="tg-0lax">50um MMF</td>
      <td class="tg-baqh">400 MHz/km</td>
      <td class="tg-baqh">550m</td>
    </tr>
    <tr>
      <td class="tg-0lax">50um MMF</td>
      <td class="tg-baqh">500 MHz/km</td>
      <td class="tg-baqh">550m</td>
    </tr>
    <tr>
      <td class="tg-0pky">10um SMF</td>
      <td class="tg-c3ow">-</td>
      <td class="tg-c3ow">5000m</td>
    </tr>
    <tr>
      <td class="tg-0lax">1000BASE-T (Standard)</td>
      <td class="tg-0lax">802.3ab-1999</td>
      <td class="tg-baqh" colspan="2">100 Ohm UTP RJ45</td>
      <td class="tg-baqh">100m</td>
    </tr>
  </tbody>
</table>


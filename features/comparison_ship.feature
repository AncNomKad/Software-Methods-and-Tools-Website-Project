Feature: comparison planes for two planes with appropriate ship information

As an avid Freespace fan
So that I can quickly compare two ships of interest
I want to see two ships, side by side, and find the appropriate information about them

Background: ships have been added to the database

  Given the following ships exist:
  | Name              | Class     	|     Manufacturer   		|
  |GTF Apollo		      |Fighters	    |Han-Ronald Corporation |
  |GTF Valkyrie		    |Fighters	    |Han-Ronald Corporation |
  |GTF Ulysses		    |Fighters	    |Triton Dynamics		    |
  |GTF Hercules		    |Fighters	    |Han-Ronald Corporation |
  |GTF Hercules Mk. II|Fighters	    |RNI Systems	          |
  |GTF Loki			      |Fighters	    |Han-Ronald Corporation |
  |GTF Perseus		    |Fighters	    |Nankam Aeronautical	  |
  |GTF Myrmidon		    |Fighters     |RNI Systems            |
  |GTF Pegasus        |Fighters     |Nankam Aeronautical    |
  |GTF Ares           |Fighters     |Nankam Aeronautical    |
  |GTF Erinyes        |Fighters     |Triton Dynamics        |
  |GVF Anubis         |Fighters     |Mekhu Enterprises      |
  |GVF Seth           |Fighters     |Mekhu Enterprises      |
  |GVF Tauret         |Fighters     |Sahr Corporation       |
  |GVF Thoth          |Fighters     |Sahr Corporation       |
  |GVF Serapis        |Fighters     |The Akheton Corporation|
  |GVF Horus          |Fighters     |The Akheton Corporation|
  |GVF Ptah           |Fighters     |The Akheton Corporation|
  |SF Dragon          |Fighters     |Shivan                 |
  |SF Manticore       |Fighters     |Shivan                 |
  |SF Scorpion        |Fighters     |Shivan                 |
  |SF Basilisk        |Fighters     |Shivan                 |
  |SF Mara            |Fighters     |Shivan                 |
  |SF Astaroth        |Fighters     |Shivan                 |
  |SF Aeshma          |Fighters     |Shivan                 |
  |GTB Athena         |Bombers      |Dynamic Metamer        |
  |GTB Medusa         |Bombers      |Han-Ronald Corporation |
  |GTB Ursa           |Bombers      |Han-Ronald Corporation |
  |GTB Artemis        |Bombers      |Han-Ronald Corporation |
  |GTB Boanerges      |Bombers      |RNI Systems            |
  |GTB Zeus           |Bombers      |Dynamic Metamer        |
  |GVB Osiris         |Bombers      |The Akheton Corporation|
  |GVB Amun Mk. II    |Bombers      |Sahr Corporation       |
  |GVB Sekhemet       |Bombers      |Mekhu Enterprises      |
  |GVB Bakha          |Bombers      |The Akheton Corporation|
  |SB Seraphim        |Bombers      |Shivan                 |
  |SB Shaitan         |Bombers      |Shivan                 |
  |SB Nephilim        |Bombers      |Shivan                 |
  |SB Nahema          |Bombers      |Shivan                 |
  |SB Taurvi          |Bombers      |Shivan                 |
  |GTT Elysium        |Transport    |UNKNOWN                |
  |GTT Argo           |Transport    |UNKNOWN                |
  |GTFr Triton        |Freighter    |UNKNOWN                |
  |GTFr Poseidon      |Freighter    |UNKNOWN                |
  |GVT Isis           |Transport    |UNKNOWN                |
  |GVFr Bes           |Freighter    |UNKNOWN                |
  |GVFr Satis         |Freighter    |UNKNOWN                |
  |PVFr Ma            |Freighter    |UNKNOWN                |
  |ST Azrael          |Transport    |Shivan                 |
  |SFr Dis            |Freighter    |Shivan                 |
  |SFr Mephisto       |Freighter    |Shivan                 |
  |SFr Asmodeus       |Freighter    |Shivan                 |
  |GTC Fenris         |Cruisers     |Han-Ronald Corporation |
  |GTC Leviathan      |Cruisers     |Han-Ronald Corporation |
  |GTC Aeoulus        |Cruisers     |RNI Systems            |
  |GTCv Deimos        |Cruisers     |UNKNOWN                |
  |GVC Aten           |Cruisers     |UNKNOWN                |
  |GVC Mentu          |Cruisers     |UNKNOWN                |
  |GVCv Sobek         |Cruisers     |UNKNOWN                |
  |SC Cain            |Cruisers     |Shivan                 |
  |SC Lilith          |Cruisers     |Shivan                 |
  |SC Rakshasa        |Cruisers     |Shivan                 |
  |SCv Moloch         |Cruisers     |Shivan                 |
  |GTD Orion          |Capital ships|UNKNOWN                |
  |GTD Hecate         |Capital ships|UNKNOWN                |
  |GTVA Colossus      |Capital ships|UNKNOWN                |
  |GVD Typhon         |Capital ships|UNKNOWN                |
  |GVD Hatshepshut    |Capital ships|The Akheton Corporation|
  |SD Demon           |Capital ships|Shivan                 |
  |SD Lucifer         |Capital ships|Shivan                 |
  |SD Ravana          |Capital ships|Shivan                 |
  |SJ Sathanas        |Capital ships|Shivan                 |
  |GTSG Watchdog      |Sentry Guns  |UNKNOWN                |
  |GTSG Cerberus      |Sentry Guns  |UNKNOWN                |
  |GTSG Alastor       |Sentry Guns  |UNKNOWN                |
  |GTSG Mjolnir       |Sentry Guns  |RNI Systems            |
  |GVSG Ankh          |Sentry Guns  |UNKNOWN                |
  |GVSG Edjo          |Sentry Guns  |UNKNOWN                |
  |SSG Trident        |Sentry Guns  |Shivan                 |
  |SSG Belial         |Sentry Guns  |Shivan                 |

  And I am on the Showroom page

Scenario: restrict ships 
**Courier Management System**

**Project Description**
This is a MySQL-based Courier Management System database project.
It manages courier operations such as booking consignments, assigning vehicles, routing through hubs, and calculating shipment cost using tariffs.

**Tables Used**
Branch
Hub
Vehicle
Manager
Tariff
Manifest
Consignment

**Relationships**

One Manager manages multiple Branches
One Branch books multiple Consignments
One Hub dispatches multiple Manifests
One Vehicle carries multiple Manifests
One Manifest contains multiple Consignments

**Normalization**

The database is designed up to:
1NF
2NF
3NF
BCNF
This ensures no redundancy and proper data integrity.

**Features**
Shipment booking
Tariff-based price calculation
Manifest allocation
Shipment tracking
Report generation using SQL queries

**Technology Used**
MySQL Workbench

**File Included**
Courier-Management-Database.sql

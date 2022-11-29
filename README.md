# PROJECT PHASE 4
___

## Teams members
- Pranav Agrawal (2021101052)
- Vishna Panyala (2021101044)
- Yashpal Yadav (2022121007)

___

## Running python file

```
python3 main.py
```
- Running the python file displays list of operations
```
mysql -u root -p < final
Enter password:
```
- RUN 
- - USE final;
- - queries to check updated database
- Select 0 to Logout

___

## Retrieval

### Selection

> OPTION 1 - Show inmates
- Calls the function `show_inmates()`
- Shows all the details of inmates

> OPTION 2 - Show Guard names
- Calls the function `show_gname()`
- Show the first and last name of all the guards

> OPTION 3 - Show cells list
- Calls the function `cell_list()` 
- Shows the Cell number of the cells


### Projection

> OPTION 4 - Show inmates and their respective cells
- Calls the function `inmatevscell()`
- Shows the details of inmates and their corresponding cell(using join)

> OPTION 5 - Show Cells or facilities and respective guards
- Calls the function `cells_facilies_vs_guards()`
- Takes input 1/2 to show all details in inmate cell and guards corresponding to cells/facilities of the corresponding cell number given as input

### Aggregate

> OPTION 6 - Show total salary of staff
- Calls the function `salary()`
- Shows the sum of salary of staff

> OPTION 7 - Show total salary of guards
- Calls the function `gsalary()`
- Shows the sum of salary of guards`

> OPTION 8 - Show details of Guard or Staff with maximum of Total years in service.
- Calls the function `gsmax_totalyears()`
- Takes input 1/2 to show the max total years in service of the Staff or Guard correspondingly

### Search

> OPTION 9 - Show details of Inmate with a particular Inmate number
- Calls the function `search_inmate()`
- Shows all details of inmate of the inmate number given as input

> OPTION 10 - Show details of cell of a particular Cell no.
- Calls the function `search_cell()`
- Shows all details of cells of the cell no given as input
 
### Analysis

> OPTION 11 - Show avg salary of Guards.
- Calls the function `avg_salary_guard()`
- Shows the average salary of guards

> OPTION 12 - Show avg salary of staff.
- Calls the function `avg_salary_staff()`
- Shows the average salary of staff 

> OPTION 13 - Show avg salary of guards and staff.
- Calls the function `avg_salary_guard_and_staff()`
- Shows the average salary of guards and staff

> OPTION 14 - Show details of inmates incarcerated last year.
- Calls the function `Inmates_incarcerated_last_year()`
- Shows all the details of inmates incarcerated last year that is date_of_incarceration > 2021-1-1

___

## Modification

### Insertion

> OPTION 15 - Insert the details of new inmates if incarcerated in the cell. Also check the
primary key constraint violation. As well as check for the capacity constraints of
cell.
- Calls the function `insert_inmate()`
- Takes input of the inmate number,cell,security,Fn,ln,age,date_of_release and date_of_incarceration and adds it into inmates

> OPTION 16 - Insert the details of new guards if employed.
- Calls the function `insert_guard()`
- Takes input of ID,join,ph,salary,Firstname,lastname,age,assigned_facilities,surpervisor_id,facility_monitor and inserts it into guards

###  Update

> OPTION 17 - Update the details of inmates if their cell gets changed and change the relationship as per needed
- Calls the function `update_cell()`
- Takes input of inmate number and new cell number and updates the corresponding inmate to the inmate number

### Delete

> OPTION 18 - Delete the details of an inmate.
- Calls the function `delete()`
- Takes input of the inmate number and deletes their details












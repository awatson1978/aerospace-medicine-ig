
To run these simulations, you will need to download the [Synthea Synthetic Patient Generation](https://synthetichealth.github.io/synthea/) utility.  

Once downloaded and installed, run the following command to generate a cohort of astronauts and simulate a number of shuttle launches.   

```bash
./run_synthea -p 20 -m shuttle_launch
```

You should see output like the following.  

![./synthea-space-health-terminal.jpg](./synthea-space-health-terminal.jpg){:width="100%"}

Depending on the simulation, the output may or may not have fatalities.  Of the ~600 astronauts who have prepared to go to space, nearly 30 have died, resulting in a nearly 5% fatality rate.  As such, there's a 1 in 20 chance of death.  If you do not see any fatalities in the output, rerun the simulation until one is generated.  You can then search the output for the term `Vehicle accident` and find the record of the deceased person.  

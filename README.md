# Belief Dynamics Visualisation Toolbox

MATLAB toolbox for visualising **multi-topic opinion dynamics**.

### Features
- Visualise initial distributions `X0` using Beta PDFs, histograms, boxplots, and correlation maps.
- Plot full opinion trajectories for all agents and topics over time.
- Supports opinions stored as `n × m × T` arrays (agents × topics × time).

### Required input format
- After every simulation, you must save a .mat or csv file containing a 3D array 'n x m x T'  (agents × topics × time)

Inputs
- X    : n x m x T opinion tensor
- mode : integer selecting visualisation type

#### Modes:
1 – Separate plot for each topic (all agents)
2 – Average opinion per topic (all topics on same figure)
3 – Average opinion per topic with 95% envelope
4 – Random sample of 10 agents per topic, separate plots
5 – All trajectories in a single figure; same colour/style per topic


## 📦 Installation

Clone and add to MATLAB path:

```matlab
addpath(genpath('src'))



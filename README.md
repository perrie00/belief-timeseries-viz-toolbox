# Belief Dynamics Visualisation Toolbox

MATLAB toolbox for visualising **multi-topic opinion dynamics**.
Designed for research groups working on belief systems, DeGroot-style dynamics,
and multi-agent models.

### Features
- Visualise initial distributions `X0` using Beta PDFs, histograms, boxplots, and correlation maps.
- Plot full opinion trajectories for all agents and topics over time.
- Supports opinions stored as `n × m × T` arrays (agents × topics × time).

### Required input format 

- Each simulation must output a folder like 
---

## 📦 Installation

Clone and add to MATLAB path:

```matlab
addpath(genpath('src'))

# PuckCast

PuckCast is an iOS application for exploring NHL player statistics, analytics, and contracts — with a focus on salary cap context and contract prediction.

The app allows users to browse the league's full "cast" of players while forecasting future contract values using cap-normalized metrics.

---

## Vision

PuckCast aims to combine:

- Player performance data
- Contract and salary cap insights
- Advanced analytics
- Contract forecasting (APC-based predictions)

Unlike traditional stats apps, PuckCast evaluates contracts using **APC (Average Percentage of the Cap)** to normalize values across cap eras and improve prediction accuracy.

---

## MVP Features (In Progress)

- Browse NHL teams
- View team rosters
- Search players
- Player profiles (overview + stats)
- Contract display (AAV, term, expiry)
- APC (Average % of Cap) toggle
- Contract comparables
- Free agent contract prediction (v1 model)

---

## Core Concept: APC (Average Percentage of Cap)

Instead of predicting raw AAV, PuckCast predicts:

APC = AAV at signing / Average League salary cap at signing (Based on The NHL's predictions)

This allows contracts to be compared fairly across seasons and enables future cap-based projections.

Predicted AAV = Predicted APC × Projected salary cap

---

## Architecture (Planned)

### Frontend
- SwiftUI
- MVVM architecture
- Async/Await networking
- Modular screen-based navigation

### Backend (Planned)
- REST API
- PostgreSQL
- Contract & cap normalization
- Prediction model inference service

### ML Pipeline (Planned)
- Feature engineering from:
  - Age
  - Production metrics
  - Advanced analytics
  - Role/usage
  - Previous APC
- Baseline: Linear regression
- Advanced: XGBoost

---

## Future Direction

PuckCast is designed to scale beyond a public analytics app.

Future roadmap includes:

- Admin portal
- Custom analytics ingestion
- Private contract overrides
- Model configuration & retraining
- Scenario-based cap planning tools

---

## Project Status

Early development (Wireframing + MVP scaffolding)

Current focus:
- UI wireframes (Figma)
- Mock data integration
- Core navigation flow

---

## Roadmap

Phase 1:
- Core browsing & player profiles
- APC display
- Static prediction prototype

Phase 2:
- Live data integration
- Comparables engine
- Prediction confidence scoring

Phase 3:
- Admin tools
- Private model training
- Scenario simulation

---

## Disclaimer

PuckCast is an independent analytics project and is not affiliated with the NHL or any NHL team.

---

## Built With

- Swift
- SwiftUI
- (Planned) FastAPI / Node
- (Planned) PostgreSQL
- (Planned) XGBoost

---

## Author

Ethan Morrow  
Software Developer & Hockey Analytics Enthusiast

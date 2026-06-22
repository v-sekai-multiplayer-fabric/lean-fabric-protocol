-- SPDX-License-Identifier: MIT
-- Copyright (c) 2026-present K. S. Ernest (iFire) Lee

import Lake
open System Lake DSL

package «lean-fabric-protocol» where

-- Shared primitive types (common vocabulary).
require «lean-shared-core» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-shared-core.git" @ "main"

-- ReBAC authorization core.
require «lean-rebac-core» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-rebac-core.git" @ "main"

-- Predictive spatial-oracle: Fabric SLA proofs reference its formulas/bounds.
require «lean-spatial-oracle» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-spatial-oracle.git" @ "main"

-- Fabric networking / SLA hexagon: saturation, waypoint bounds, abyssal SLA.
lean_lib FabricProtocol where
  roots := #[`FabricProtocol]
  globs := #[.one `FabricProtocol]

-- Research-tier Fabric + Saturate proofs (NOT on the CI production gate).
lean_lib Research where
  roots := #[`Research]
  globs := #[.one `Research]

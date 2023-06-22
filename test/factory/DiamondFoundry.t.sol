// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import { Create2 } from "@openzeppelin/contracts/utils/Create2.sol";
import { BaseTest } from "../Base.t.sol";
import { IFacetRegistry, FacetRegistry } from "src/registry/FacetRegistry.sol";
import { DiamondFoundry } from "src/DiamondFoundry.sol";
import { Diamond } from "src/diamond/Diamond.sol";
import { Diamond } from "src/diamond/Diamond.sol";

abstract contract DiamondFoundryTest is BaseTest {
    DiamondFoundry public diamondFoundry;
    FacetRegistry public facetRegistry;

    function setUp() public virtual override {
        super.setUp();

        Diamond diamondBase = new Diamond();
        facetRegistry = new FacetRegistry();
        diamondFoundry = new DiamondFoundry(facetRegistry, address(diamondBase));
    }
}
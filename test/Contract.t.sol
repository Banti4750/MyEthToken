// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

import "src/Contract.sol";

contract TestContract is Test {
    event Transfer(address indexed from, address indexed to, uint256 value);
    // event TransferFrom(address indexed from, address indexed to, uint256 value);
    Contract c;
    function setUp() public {
        c = new Contract();
    }

    //testing test case
    // function testMint() public {
    //     //test 1
    //     c.mint(address(this), 100);
    //     assertEq(c.balanceOf(address(this)), 100, "ok");
    //     //test 2
    //     assertEq(
    //         c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9),
    //         uint256(0),
    //         "ok"
    //     );

    //     //test 3
    //     c.mint(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 100);
    //     assertEq(
    //         c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9),
    //         uint256(100),
    //         "ok"
    //     );
    // }

    // function testTransfer() public {
    //     c.mint(address(this), 100);
    //     c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 50);

    //     assertEq(
    //         c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9),
    //         50,
    //         "ok"
    //     );

    //     // now this address calling the contract
    //     vm.prank(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9);
    //     c.transfer(address(this), 50);

    //     assertEq(c.balanceOf(address(this)), 100);

    //     assertEq(
    //         c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9),
    //         0,
    //         "ok"
    //     );
    // }

    // function testApproval() public {
    //     c.mint(address(this), 100);

    //     c.approve(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 10);

    //     assertEq(
    //         c.allowance(
    //             address(this),
    //             0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9
    //         ),
    //         10
    //     );

    //     vm.prank(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9);
    //     c.transferFrom(
    //         address(this),
    //         0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9,
    //         5
    //     );

    //     assertEq(c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9), 5);
    //     assertEq(c.balanceOf(address(this)), 95);

    //     assertEq(
    //         c.allowance(
    //             address(this),
    //             0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9
    //         ),
    //         5
    //     );
    // }

    // function testFailApproval() public {
    //     c.mint(address(this), 100);

    //     c.approve(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 10);

    //     vm.prank(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9);

    //     c.transferFrom(
    //         address(this),
    //         0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9,
    //         20
    //     );
    // }

    // function testFailMint() public {
    //     console.logString("hdsgfhdb");
    //     c.mint(address(this), 100);

    //     c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 110);
    // }

    //testing emit function

    // function testTransferEmit() public {
    //     c.mint(address(this), 100);
    //     vm.expectEmit(true, true, false, true);
    //     emit Transfer(
    //         address(this),
    //         0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9,
    //         10
    //     );

    //     c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 10);
    // }

    // function testApproveEmit() public {
    //     c.mint(address(this), 100);
    //     c.approve(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 10);
    //     vm.prank(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9);

    //     vm.expectEmit(true, true, false, true);
    //     emit TransferFrom(
    //         address(this),
    //         0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9,
    //         10
    //     );

    //     c.transferFrom(
    //         address(this),
    //         0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9,
    //         10
    //     );

    //     assertEq(
    //         c.balanceOf(address(this)),
    //         90,
    //         "Incorrect balance for address(this)"
    //     );
    //     assertEq(
    //         c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9),
    //         10,
    //         "Incorrect balance for spender"
    //     );
    //     assertEq(
    //         c.allowance(
    //             address(this),
    //             0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9
    //         ),
    //         0,
    //         "Allowance was not updated correctly"
    //     );
    // }

    // function testApproveEmit() public {
    //     // Step 1: Mint 100 tokens to the contract itself
    //     c.mint(address(this), 100);

    //     // Step 2: Approve 10 tokens for another address
    //     address spender = 0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9;
    //     c.approve(spender, 10);

    //     // Step 3: Prank the spender address
    //     vm.prank(spender);

    //     // Step 4: Expect a Transfer event to be emitted
    //     vm.expectEmit(true, true, false, true);
    //     emit Transfer(address(this), spender, 10);

    //     // Step 5: Perform the transfer using transferFrom
    //     c.transferFrom(address(this), spender, 10);

    //     // Step 6: Verify balances and allowances
    //     assertEq(
    //         c.balanceOf(address(this)),
    //         90,
    //         "Incorrect balance for address(this)"
    //     );
    //     assertEq(c.balanceOf(spender), 10, "Incorrect balance for spender");
    //     assertEq(
    //         c.allowance(address(this), spender),
    //         0,
    //         "Allowance was not updated correctly"
    //     );
    // }

    // function testMint() public {
    //     c.mint(address(this), 100);
    //     console.logString("0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9");
    //     console.logUint(5);
    //     assertEq(c.balanceOf(address(this)), 100, "ok");
    // }

    // prank  , startprank  , stopprank

    function testTranfer() public {
        c.mint(address(this), 100);
        c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 100);

        vm.startPrank(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9);
        c.transfer(address(this), 10);
        c.transfer(address(this), 10);
        c.transfer(address(this), 10);
        c.transfer(address(this), 70);
        vm.stopPrank();

        c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 100);

        assertEq(c.balanceOf(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9), 100);
    }

    // deal

    function test_Dealexample() public {
        address account = 0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9;

        vm.deal(account, 10 ether);

        assertEq(address(account).balance, 10 ether, "ok");
    }

    // hoex

    function test_Hoexexample() public {
        address account = 0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9;

        hoax(account, 100 ether);
        // c.transfer(0x786ba2E5eBA763A3EA4A53cDa52eF4E4f02F20A9, 100 ether);
        assertEq(address(account).balance, 100 ether, "ok");
    }
}

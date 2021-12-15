import React, { Fragment } from 'react'
import styled from 'styled-components'
import {Collapse, Nav, Navbar, NavbarBrand, NavbarText, NavbarToggler, NavItem, NavLink} from "reactstrap";

const Wrapper = styled.nav`
  width: 100%;
  height: 65px;
  line-height: 65px;
  background-color: black;
  color: white;
  margin-left: auto;
  margin-right: auto;
  max-width: 100%;
`

const Header = (props) => {
    return (
    <Navbar
        color="light"
        expand="md"
        light
    >
        <NavbarBrand href="/">
            reactstrap
        </NavbarBrand>
        <NavbarToggler onClick={function noRefCheck(){}} />
        <Collapse navbar>
            <Nav
                className="me-auto"
                navbar
            >
                <NavItem>
                    <NavLink href="/about">
                        about
                    </NavLink>
                </NavItem>
                <NavItem>
                    <NavLink href="/test">
                        test
                    </NavLink>
                </NavItem>
                <NavItem>
                    <NavLink href="/user">
                        user
                    </NavLink>
                </NavItem>
            </Nav>
            <NavbarText>
                Exam App
            </NavbarText>
        </Collapse>
    </Navbar>
    )
}

export default Header
<%--
  ~ Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
  ~
  ~ WSO2 Inc. licenses this file to you under the Apache License,
  ~ Version 2.0 (the "License"); you may not use this file except
  ~ in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~    http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>

<!-- localize.jsp MUST already be included in the calling script -->
<%@ page
	import="org.wso2.carbon.identity.application.authentication.endpoint.util.AuthenticationEndpointUtil"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="libs/theme/assets/images/favicon.ico"
	type="image/x-icon" />
<link href="libs/theme/wso2-default.min.css" rel="stylesheet">

<%@include file="../includes/localize.jsp"%>
<%@include file="../includes/init-url.jsp"%>

<title><%=AuthenticationEndpointUtil.i18n(resourceBundle, "wso2.identity.server")%></title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700;800&display=swap');

html, body {
	margin: 0;
	padding: 0;
}

* {
	font-family: 'Montserrat';
	letter-spacing: 0rem !important;
}

.background {
	width: 100%;
	min-height: 100vh;
	padding: 1rem 0 2rem;
	background-color: #e9ecef !important;
	background-position: left 100%;
	background-repeat: no-repeat;
	background-size: cover cover;
	display: flex;
	flex-direction: column;
}

/*Lado esquerdo da tela */
.left {
	display: grid;
}

.header {
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: center
}

.header div {
	display: flex;
	align-items: center;
}

.logo-dfts {
	max-width: 400%;
    height: auto;
}

h1 {
	font-weight: 300;
	display: grid;
	color: white;
	font-size: 3em;
	margin: .5rem 0;
}

h1>b {
	font-weight: 700;
}

.linha {
	background-color: #fbb03b;
	height: 5px;
	width: 90%;
	max-width: 35rem;
	border-radius: 0 .15rem .15rem 0;
}

.right {
	margin: 1rem;
}

/* �rea Login */
.caixa-login {
	background-color: white;
	padding: 1rem;
	margin: 5rem auto;
	display: flex;
	flex-direction: column;
	max-width: 40rem;
	align-self: center;
}

h3 {
	font-size: 1.5rem;
	margin-top: 0;
}

.caixa-login>h3 {
	font-weight: 700;
}

.botoes-topo {
	display: grid;
	grid-template-columns: 1fr 1fr;
	height: 5rem;
}

.botoes-topo button {
	font-size: 1rem;
	border-radius: none;
	background-color: #fcfcfc;
	border: none;
	border-bottom: solid 3px #c6c6c8;
	font-weight: 600;
	color: #c6c6c8;
	text-transform: uppercase;
}

input[type="radio"] {
	-ms-transform: scale(1.4);
	/* IE 9 */
	-webkit-transform: scale(1.4);
	/* Chrome, Safari, Opera */
	transform: scale(1.4);
}

.botoes-topo button input {
	margin-right: 5px;
	cursor: pointer;
}

.botoes-topo .active {
	background-color: #f2f2f7;
	color: black;
	font-weight: 600;
	border-bottom: #1779ba solid 3px;
}

.area-input {
	display: flex;
	flex-direction: column;
	gap: 1rem;
	margin-top: 2rem;
}

.area-input .item .input {
	display: flex;
	align-items: center;
	justify-content: center;
	border: #c6c6c8 solid .1rem;
	border-radius: .75rem;
	height: 3.4rem;
}

.area-input .item .input img {
	width: 1.9em;
	padding: 0 0 0 .7rem;
}

.area-input .item .input input {
	background-color: transparent;
	border: none;
	font-size: 1em;
	height: 2rem;
	padding-left: .5rem;
	width: 100%;
}

input:focus {
	outline: none;
}

/*Checkbox */
.toggle { -
	-uiToggleSize: var(- -toggleSize, 1.25rem); -
	-uiToggleBorderWidth: var(- -toggleBorderWidth, 2px); -
	-uiToggleColor: var(- -toggleColor, #007aff);
	display: flex;
	align-items: center;
	position: relative;
	margin: 2rem 0;
}

.toggle__input {
	width: var(- -uiToggleSize);
	height: var(- -uiToggleSize);
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	margin: 0;
}

.toggle__label {
	display: inline-flex;
	min-height: var(- -uiToggleSize);
	padding-left: calc(var(- -uiToggleSize)+ var(- -toggleIndent, .4em));
}

.toggle__input:not (:disabled )~.toggle__label {
	cursor: pointer;
}

.toggle__label::after {
	content: "";
	box-sizing: border-box;
	width: 1em;
	height: 1em;
	border-radius: 5px;
	transition: .1s;
	font-size: var(- -uiToggleSize);
	background-color: transparent;
	border: solid 2px #aaa;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 2;
}

.toggle__input:checked ~.toggle__label::after {
	background-color: var(- -uiToggleColor);
	border: solid 2px var(- -uiToggleColor);
}

.toggle__text {
	margin-top: auto;
	margin-bottom: auto;
	color: #8a8a8e;
	font-weight: 500;
}

.toggle__label::before {
	content: "";
	width: 0;
	height: 0;
	font-size: var(- -uiToggleSize);
	border-left-width: 0;
	border-bottom-width: 0;
	border-left-style: solid;
	border-bottom-style: solid;
	border-color: var(- -toggleArrowColor, #fff);
	position: absolute;
	top: .5em;
	left: .2em;
	z-index: 3;
	transform-origin: left top;
	transform: rotate(-40deg) skew(10deg);
}

.toggle__input:checked ~.toggle__label::before { -
	-uiToggleArrowWidth: var(- -toggleArrowWidth, 2px);
	width: .4em;
	height: .2em;
	border-left-width: var(- -uiToggleArrowWidth);
	border-bottom-width: var(- -uiToggleArrowWidth);
}

.toggle__input:not (:disabled )~.toggle__label::before {
	will-change: width, height;
	opacity: 0;
}

.toggle__input:not (:disabled ):checked ~.toggle__label::before {
	opacity: 1;
}

.grupo-acesso .esqueci-senha {
	font-size: .9em;
	font-weight: 600;
	text-decoration: none;
	color: #1779ba;
	margin-top: .5rem;
	display: inline-block;
}

.bt-entrar {
	background-color: #1779ba;
	border-color: #1779ba;
	border: none;
	color: white;
	height: 3.5rem;
	font-size: 1em;
	width: 100%;
	border-radius: .75em;
	font-weight: 600;
	cursor: pointer;
	transition: .2s;
	margin-top: 13px;
}

.bt-entrar:hover {
	box-shadow: 0rem .2rem .5rem #1779ba;
}

.disp-flex {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 2rem 0;
}

.disp-flex span {
	display: block;
	background-color: #c6c6c8;
	height: 2px;
	width: 40%;
}

.disp-flex p {
	font-weight: 600;
}

.bt-entrar-gov {
	display: flex;
	justify-content: center;
	align-items: center;
	border: solid 1px #1351b4;
	text-decoration: none;
	color: #1351b4;
	font-weight: 600;
	width: 100%;
	height: 3.5rem;
	border-radius: 1.25rem;
	transition: .2s;
}

.bt-entrar-gov:hover {
	background-color: #1351b446;
}

.cookies {
	font-size: 1rem;
	font-weight: 500;
	margin: 3rem 0;
}

.cookies a {
	text-decoration: none;
	color: #1779ba;
}

.assinatura {
	font-size: .9rem;
	color: silver;
	text-align: center;
	padding: 20%;
}

@media screen and (min-width: 64rem) {
	.background {
		display: grid;
		grid-template-columns: 60% 40%;
		padding: 0;
		background-size: 100%;
	}
	.left {
		justify-items: start;
		align-content: center;
	}
	.header {
		display: block;
		margin-left: 8rem;
		margin-bottom: 2rem;
		margin: -11rem 0 2rem 8rem;
	}
	.header h1 {
		display: block;
		font-size: 4rem;
		font-weight: 0;
	}
	.header div {
		height: 8rem;
		width: 8rem;
		border-radius: 5rem;
	}
	.logo-dfts {
		height: 13rem;
	}
	.linha {
		height: .6rem;
		border-radius: 0 .3rem .3rem 0;
	}
	.caixa-login {
		width: 30rem;
	}
	.right {
		background-color: white;
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 0;
	}

.buttons {
	margin-top: 15px;
}

.buttons .field a {
	color: #1779ba;
	font-weight: 600;
}

.cookie-policy-message a {
	color: #1779ba;
	font-weight: 600;
}

.ui.large.button.link-button {
	color: #1779ba;
	font-weight: 600;
}

.footer {
	display: none;
}

.field button.ui.icon.button.fluid{
display: flex;
	justify-content: center;
	align-items: center;
	border: solid 1px #1351b4;
	text-decoration: none;
	color: #1351b4;
	font-weight: 600;
	width: 100%;
	height: 3.5rem;
	border-radius: 1.25rem;
	transition: .2s;
	background-color: white;
}

.field button.ui.icon.button.fluid:hover {
	background-color: #1351b446;
}

.field button.ui.icon.button.fluid strong{
padding-left: 5px;
}

body{
    background: #ffffff !important;
}

main{
	
}

.ui.segment{
	border: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}

.ui.segment.caixa-modal{
	background-color: white;
    margin: 1rem 13rem 1rem 13rem;
    padding: 3rem;
    border-radius: 1rem;
}

.ui.secondary.segment {
	background-color: white;
}

h4{
	font-weight: 700;
	font-size: 25px;
	color: rgb(63, 63, 63);
}

h5, p{
	color: black;
}

.margin-bottom-double{
	font-size: 19px;
}

.ui.checkbox label{
    font-weight: 500;
	font-size: 17px;
}

.feild>.cookie-policy-message{
	text-align: left;
}

.ui.form .grouped.fields {
	display: flex;
	align-items: center;
	justify-content: center;
}

.ui.form .grouped.fields .field{
	width: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.ui.radio.checkbox .box, .ui.radio.checkbox label{
	padding-left: 25px;
	font-size: 18px;
    background-color: transparent;
    border: none;
    font-weight: 600;
}

.ui.primary.large.button{
	background-color: #1779ba;
	border-color: #1779ba;
    border: none;
    color: white;
    height: 4rem;
    font-size: 1em;
    width: 100%;
    border-radius: 0.75em;
    font-weight: 600;
    cursor: pointer;
    transition: .2s;
}

.ui.primary.large.button:hover{
	box-shadow: 0rem 0.2rem 0.5rem #1779ba;
}

.ui.large.button.link-button{
	
    margin-bottom: 12px;
    
}
</style>

<script src="libs/jquery_3.4.1/jquery-3.4.1.js"></script>

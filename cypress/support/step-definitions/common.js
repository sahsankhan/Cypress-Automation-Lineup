const {Given, When, Then, And} = require("cypress-cucumber-preprocessor/steps");
require('cypress-real-events/support');


const CommonLocators = require("../../page-objects/commonLocator");
const LoginPage = require("../../page-objects/loginPage");

Given("I login in to Lineup.ai", () => {
    cy.visit("https://staging.lineup.ai");
    cy.fixture("user").then((user) => {
        LoginPage.login(user.username, user.password);
    });
});

Given("I login in to Lineup.ai for Reporting", () => {
    cy.visit("https://staging.lineup.ai");
    cy.fixture("user").then((user) => {
        LoginPage.login(user.username1, user.password1);
    });
});

Then("I should see {string} success message on the page", (text) => {
    CommonLocators.successMessage(text).should('exist');
});

Then("I should see Today's Progress Page", () => {
    CommonLocators.todayProgress().should("be.visible");
});

Given("I visit lineup.ai", () => {
    cy.visit("https://staging.lineup.ai");
});

And("I enter email {string} and password {string}", (email, password) => {
    LoginPage.login(email, password);
});

And("I refresh page", () => {
    cy.reload();
});

And("I wait {string} seconds", (time) => {
    cy.wait(time * 1000);
});

Then('I should see {string} heading on Login Page', (text) => {
CommonLocators.heading(text).should("be.visible");
});

When('I click on the profile dropdown button', () => {
    CommonLocators.dropdown().click();
});

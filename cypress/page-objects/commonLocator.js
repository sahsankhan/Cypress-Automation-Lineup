class CommonLocatorsPage {
    successMessage(text) {
        return cy.xpath(`//div[contains(.,'${text}')]`)
    }

    todayProgress() {
        return cy.get(`[data-testid="Today's Progress"]`);
    }

    heading(text) {
        return cy.xpath(`//p[contains (., "${text}")]`);
    }

    resetPassword(text) {
        return cy.get(`a[data-testid="${text}"]`);
    }

    dropdown() {
        return cy.get('button[id="nav-dropdown"]'). eq(1);    
    }
}

module.exports = new CommonLocatorsPage;
  
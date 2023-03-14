describe('Add to Cart', () => {
  beforeEach(() => {
    cy.visit('/')
    cy.get(".products article").should("be.visible");
  });

  it("Should add an item to cart", () => {
    cy.contains("Add")
      .first()
      .click({force: true});

    cy.contains("My Cart (1)")
      .should("exist")
      .click();

    cy.contains("Scented Blade")
      .should("exist");
  });
})
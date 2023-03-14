describe('Product Details', () => {
  beforeEach(() => {
    cy.visit('/')
    cy.get(".products article").should("be.visible");
  });

  it("Should navigate to a product details page", () => {
    cy.get("[alt='Scented Blade']").click();
    cy.contains("Scented Blade").should("exist");

    cy.contains("Add").click({force: true});
    cy.contains("My Cart (1)").should("exist");
  });
})
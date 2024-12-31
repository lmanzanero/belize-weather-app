
 
class Header extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    const dataAttribute = this.getAttribute('data'); 
    console.log("data: ", dataAttribute);
    const headerTemplate = document.createElement('template');

headerTemplate.innerHTML = `
  <style>
   
  </style>
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Belize Weather App</title>
  </head>
`;

    shadowRoot.appendChild(headerTemplate.content);
  }
}

customElements.define('header-component', Header);
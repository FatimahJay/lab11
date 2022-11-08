import { render, screen } from '@testing-library/react';
import App from './App';

//task1
test('renders learn react link', () => {
  render(<App />);
  // gets the component by id
  const linkElement = screen.getByTestId("comp");    
  expect(linkElement).toBeInTheDocument();   // finds the component in the document if it exists
});

//task2

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByTestId("comp");
  expect(linkElement).toHaveTextContent("Hello World");

});
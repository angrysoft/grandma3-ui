interface Positions {
  left: number;
  right: number;
  top: number;
  bottom: number;
}

interface Options {
  Anchor?: Positions;
  Padding?: Positions;
  Margin?: Positions;
}

interface LabelOptions extends Options {
  Text: string;
  ContentDriven: "Yes" | "No";
  ContentWidth: "Yes" | "No";
  TextAutoAdjust: "Yes" | "No";
  Font: string;
  HasHover: "Yes" | "No";
}
type ElementType = "UIObject" | "LineEdit";

interface UiElement {
  Append(element: ElementType): UiElement;
  [key: string]: any;
}

function createUiElement(
  parent: UiElement,
  elementType: ElementType,
  options: any,
) {
  const element = parent.Append(elementType);
  for (const key of options) {
    element[key] = options[key];
  }
  return element;
}

export { createUiElement }
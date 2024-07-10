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
  [key: string]: any;
}
type ElementType = "UIObject" | "LineEdit";
interface UiElement {
  Append(element: ElementType): UiElement;
  [key: string]: any;
}
export function mergeOptions(defaultOptions: any, options: Options): void;
export function createUiElement(
  parent: UiElement,
  elementType: ElementType,
  options?: Options,
): UiElement;

export function Window(
  display: UiElement,
  title: string,
  w: number,
  h: number,
  options?: any,
): UiElement;

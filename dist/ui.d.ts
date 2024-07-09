type ElementType = "UIObject" | "LineEdit";
interface UiElement {
    Append(element: ElementType): UiElement;
    [key: string]: any;
}
export function mergeOptions(defaultOptions:any, options:any):void;
export function createUiElement(parent: UiElement, elementType: ElementType, options: any): UiElement;
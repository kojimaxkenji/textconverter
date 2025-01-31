export interface TextConverterPlugin {
  convert(options: { value: string }): Promise<{ value: string }>;
}

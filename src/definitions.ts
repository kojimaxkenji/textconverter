export interface TextConverterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}

declare module "@webref/idl" {
  interface IdlFile {
    text(): Promise<string>;
  }
  
  function listAll(): Promise<Record<string, IdlFile>>;
}

declare module "@webref/events" {
  interface EventInfo {
    type: string;
    interface: string;
    targets: string[];
  }
  
  function listAll(): Promise<Record<string, EventInfo[]>>;
}

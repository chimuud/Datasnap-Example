unit ServerMethodsUnit;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  uMembers;

type
{$METHODINFO ON}
  TServerMethods = class(TComponent)
  private
    FMembers: TMembers;
  public
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetMember(Id: Integer): TMembers;
  end;
{$METHODINFO OFF}

implementation


uses System.StrUtils;


function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.GetMember(Id: Integer): TMembers;
begin
  FMembers := TMembers.Create;
//  FillChar(Members, SizeOf(Members), 0);
  FMembers.GetMember(Id);
  Result := FMembers;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.


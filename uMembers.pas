unit uMembers;

interface

type
  TMembers = class
  private
    FMemberId: Integer;
    FFirstName: string;
    FMiddleName: string;
    FLastName: string;
    FAge: Integer;
    function GetAge: Integer;
    function GetFirstName: string;
    function GetLastName: string;
    function GetMiddleName: string;
    function GetMemberId: Integer;
  public
    property MemberId: Integer read GetMemberId write FMemberId;
    property FirstName: string read GetFirstName write FFirstName;
    property MiddleName: string read GetMiddleName write FMiddleName;
    property LastName: string read GetLastName write FLastName;
    property Age: Integer read GetAge write FAge;

    function GetMember(Id: Integer): TMembers;
  end;

implementation

{ TMembers }

// *** Properties ***

function TMembers.GetMemberId: Integer;
begin
  Result := FMemberId;
end;

function TMembers.GetAge: Integer;
begin
  Result := FAge;
end;

function TMembers.GetFirstName: string;
begin
  Result := FFirstName;
end;

function TMembers.GetLastName: string;
begin
  Result := FLastName;
end;

function TMembers.GetMiddleName: string;
begin
  Result := FMiddleName;
end;

// *** End Properties ***

function TMembers.GetMember(Id: Integer): TMembers;
begin
  if Id = 0 then
  begin
    FirstName := 'Jon';
    LastName := 'Don';
    Age := 35;
  end else
  if Id = 1 then
  begin
    FirstName := 'Bob';
    LastName := 'Eaton';
    Age := 44;
  end else
  begin
    FirstName := '';
    LastName := '';
    Age := 0;
  end;
end;


end.

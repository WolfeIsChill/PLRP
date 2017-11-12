if (typeName _this == "ARRAY") then {
  {
    call compile _x
  } forEach (_this);
} else {
  call compile _this;
};

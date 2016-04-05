; keyboard bindings (via /keyboard)
;
; , is one handed weapon
; . is two handed weapon
; ; is ranged weapon
; = is a /qbind to pet target

EquipOneHanded() {
  Send, {,}
}

EquipTwoHanded() {
  Send, {.}
}

EquipRanged() {
  Send, {;}
}

TargetPet() {
  Send, {=}
}

; single binds

BindWithPet(key) {
  TargetPet()
  Sleep, 50
  Send, %key%
  return
}

BindWithOneHanded(key) {
  EquipOneHanded()
  Sleep, 50
  Send, %key%
  return
}

BindWithTwoHanded(key) {
  EquipTwoHanded()
  Sleep, 50
  Send, %key%
  return
}

BindWithRanged(key) {
  EquipRanged()
  Sleep, 50
  Send, %key%
  return
}

; double binds

DoubleBind(key1, key2, sleep:=0) {
  Send, %key1%
  Sleep, %sleep%
  Send, %key2%
  return
}

DoubleBindWithOneHanded(params*) {
  EquipOneHanded()
  Sleep, 50
  DoubleBind(params*)
  return
}

DoubleBindWithTwoHanded(params*) {
  EquipTwoHanded()
  Sleep, 50
  DoubleBind(params*)
  return
}

DoubleBindWithRanged(params*) {
  EquipRanged()
  Sleep, 50
  DoubleBind(params*)
  return
}

; style chains/triple binds

StyleChain(key1, key2, key3, sleep:=50) {
  Send, %key1%
  Sleep, %sleep%
  Send, %key2%
  Sleep, %sleep%
  Send, %key3%
  return
}

StyleChainWithOneHanded(params*) {
  EquipOneHanded()
  Sleep, 50
  StyleChain(params*)
  return
}

StyleChainWithTwoHanded(params*) {
  EquipTwoHanded()
  Sleep, 50
  StyleChain(params*)
  return
}

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.

^!s::Suspend  ; Assign Ctrl-Alt-R as a hotkey to suspend the script.

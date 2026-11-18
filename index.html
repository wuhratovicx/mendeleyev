import streamlit as st
import re
from typing import List, Dict, Tuple, Optional

# Данные элементов (из оригинального приложения)
S = "H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Cn Nh Fl Mc Lv Ts Og".split()
N = "Vodorod,Geliy,Litiy,Berilliy,Bor,Uglerod,Azot,Kislorod,Ftor,Neon,Natriy,Magniy,Alyuminiy,Kremniy,Fosfor,Oltingugurt,Xlor,Argon,Kaliy,Kalsiy,Skandiy,Titan,Vanadiy,Xrom,Marganets,Temir,Kobalt,Nikel,Mis,Ruh,Galliy,Germaniy,Mishyak,Selen,Brom,Kripton,Rubidiy,Stronsiy,Ittriy,Sirkoniy,Niobiy,Molibden,Texnetsiy,Ruteniy,Rodiy,Palladiy,Kumush,Kadmiy,Indiy,Qalay,Surma,Tellur,Yod,Ksenon,Seziy,Bariy,Lantan,Seriy,Prazeodim,Neodim,Prometiy,Samariy,Evropiy,Gadoliniy,Terbiy,Disprozyiy,Golmiy,Erbiy,Tuliy,Itterbiy,Lyutetsiy,Gafniy,Tantal,Volfram,Reniy,Osmiy,Iridiy,Platina,Oltin,Simob,Talliy,Qo'rg'oshin,Vismut,Poloniy,Astat,Radon,Fransiy,Radiy,Aktiniy,Toriy,Protaktiniy,Uran,Neptuniy,Plutoniy,Ameritsiy,Kuriy,Berkliy,Kaliforniy,Eynshteyniy,Fermiy,Mendeleyeviy,Nobeliy,Lourensiy,Rezerfordiy,Dubniy,Siborgiy,Boriy,Xassiy,Meytneriy,Darmshtadtiy,Rentgeniy,Kopernitsiy,Nihoniy,Fleroviy,Moskoviy,Livermoriy,Tennessin,Oganesson".split(",")
M_STR = "1.008,4.0026,6.94,9.0122,10.81,12.011,14.007,15.999,18.998,20.180,22.990,24.305,26.982,28.085,30.974,32.06,35.45,39.948,39.098,40.078,44.956,47.867,50.942,51.996,54.938,55.845,58.933,58.693,63.546,65.38,69.723,72.630,74.922,78.971,79.904,83.798,85.468,87.62,88.906,91.224,92.906,95.95,[98],101.07,102.91,106.42,107.87,112.41,114.82,118.71,121.76,127.60,126.90,131.29,132.91,137.33,138.91,140.12,140.91,144.24,[145],150.36,151.96,157.25,158.93,162.50,164.93,167.26,168.93,173.05,174.97,178.49,180.95,183.84,186.21,190.23,192.22,195.08,196.97,200.59,204.38,207.2,208.98,[209],[210],[222],[223],[226],[227],232.04,231.04,238.03,[237],[244],[243],[247],[247],[251],[252],[257],[258],[259],[266],[267],[268],[269],[270],[277],[278],[281],[282],[285],[286],[289],[290],[293],[294],[294]".split(",")
M = [float(re.sub(r'[\[\]]', '', m)) if m.startswith('[') else float(m) for m in M_STR]

# Исключения электронной конфигурации
X = {
    24: [2, 8, 13, 1], 29: [2, 8, 18, 1], 41: [2, 8, 18, 12, 1], 42: [2, 8, 18, 13, 1],
    44: [2, 8, 18, 15, 1], 45: [2, 8, 18, 16, 1], 46: [2, 8, 18, 18], 47: [2, 8, 18, 18, 1],
    57: [2, 8, 18, 18, 9, 2], 58: [2, 8, 18, 19, 9, 2], 64: [2, 8, 18, 25, 9, 2],
    78: [2, 8, 18, 32, 17, 1], 79: [2, 8, 18, 32, 18, 1], 89: [2, 8, 18, 32, 18, 9, 2],
    90: [2, 8, 18, 32, 18, 10, 2], 91: [2, 8, 18, 32, 20, 9, 2], 92: [2, 8, 18, 32, 21, 9, 2],
    93: [2, 8, 18, 32, 22, 9, 2], 96: [2, 8, 18, 32, 25, 9, 2], 103: [2, 8, 18, 32, 32, 8, 3]
}
O = [[1,0],[2,0],[2,1],[3,0],[3,1],[4,0],[3,2],[4,1],[5,0],[4,2],[5,1],[6,0],[4,3],[5,2],[6,1],[7,0],[5,3],[6,2],[7,1]]

def get_shells(z: int) -> List[int]:
    if z in X:
        return X[z]
    r = z
    a = [0] * 7
    for n, l in O:
        if r <= 0:
            break
        c = min(r, 2 * (2 * l + 1))
        a[n-1] += c
        r -= c
    return [v for v in a if v > 0] or [0]

def get_block(z: int) -> int:
    if z in [1,2,3,4,11,12,19,20,37,38,55,56,87,88]:
        return 0  # s
    if ((5 <= z <= 10) or (13 <= z <= 18) or (31 <= z <= 36) or (49 <= z <= 54) or (81 <= z <= 86) or (113 <= z <= 118)):
        return 1  # p
    if ((58 <= z <= 71) or (90 <= z <= 103)):
        return 3  # f
    return 2  # d

BN = ["s", "p", "d", "f"]

def get_form(z: int) -> str:
    if z in [1,2,7,8,9,10,17,18,36,54,86]:
        return "g"
    if z in [35, 80]:
        return "l"
    if z in [5,6,15,16,34,53]:
        return "c"
    if z in [43,61,85,87] or z >= 95:
        return "r"
    return "m"

ST = {
    "g": "gaz",
    "l": "suyuqlik",
    "c": "qattiq (kristall yoki kukun)",
    "m": "qattiq (metall)",
    "r": "radioaktiv, asosan sun'iy yo'l bilan olinadi"
}

def parse_formula(formula: str) -> Optional[Dict[str, int]]:
    """Простой парсер формул типа H2SO4, Ca(OH)2"""
    formula = formula.strip().replace(" ", "")
    if not formula:
        return None
    # Упрощённый парсер
    pattern = r'([A-Z][a-z]?)(\d*)|\(([^)]+)\)(\d*)'
    elements = {}
    i = 0
    while i < len(formula):
        m = re.match(r'([A-Z][a-z]?)(\d*)', formula[i:])
        if m:
            el, num = m.groups()
            num = int(num) if num else 1
            elements[el] = elements.get(el, 0) + num
            i += m.end()
            continue
        m = re.match(r'\(([^)]+)\)(\d*)', formula[i:])
        if m:
            inside, mult = m.groups()
            mult = int(mult) if mult else 1
            sub = parse_formula(inside)
            if sub:
                for e, c in sub.items():
                    elements[e] = elements.get(e, 0) + c * mult
            i += m.end()
            continue
        return None
    return elements

def calculate(formula: str) -> Dict:
    els = parse_formula(formula)
    if not els:
        return {"error": "Noto'g'ri formula"}
    total_p = total_n = total_e = 0
    details = []
    for sym, count in els.items():
        try:
            z = S.index(sym) + 1
        except ValueError:
            return {"error": f"Noma'lum element: {sym}"}
        A = round(M[z-1])
        n = A - z
        p = z * count
        ne = n * count
        e = z * count
        total_p += p
        total_n += ne
        total_e += e
        details.append({"element": f"{sym} ({N[z-1]})", "count": count, "p": p, "n": ne, "e": e})
    return {
        "formula": formula,
        "details": details,
        "total_p": total_p,
        "total_n": total_n,
        "total_e": total_e,
        "mass": sum(M[S.index(sym)] * count for sym, count in els.items())
    }

# Streamlit приложение
st.set_page_config(page_title="Davriy jadval", page_icon="⚛️", layout="wide")
st.title("⚛️ Mendeleyev davriy jadvali")
st.caption("Python versiyasi (Streamlit)")

tab1, tab2, tab3, tab4 = st.tabs(["Jadval", "Qidiruv", "Hisob", "Test"])

with tab1:
    st.subheader("Davriy jadval")
    # Простая сетка
    cols = st.columns(18)
    for z in range(1, 119):
        pos = None
        if z == 1: pos = (0, 0)
        elif z == 2: pos = (0, 17)
        elif z <= 4: pos = (1, z-2)
        elif z <= 10: pos = (1, z+7)
        elif z <= 12: pos = (2, z-10)
        elif z <= 18: pos = (2, z-1)
        elif z <= 36: pos = (3, z-19)
        elif z <= 54: pos = (4, z-37)
        elif z <= 56: pos = (5, z-55)
        elif z <= 71: pos = (8, z-55)
        elif z <= 86: pos = (5, z-69)
        elif z <= 88: pos = (6, z-87)
        elif z <= 103: pos = (9, z-87)
        else: pos = (6, z-101)
        # Для простоты показываем список по блокам
    st.info("To'liq interaktiv grid uchun original HTML versiyasini ishlating. Bu yerda elementlar ro'yxati:")
    data = [{"Z": z, "Belgi": S[z-1], "Nomi": N[z-1], "Massa": M[z-1], "Blok": BN[get_block(z)], "Holat": ST[get_form(z)]} for z in range(1, 119)]
    st.dataframe(data, use_container_width=True, height=600)

with tab2:
    st.subheader("Qidiruv")
    q = st.text_input("Qidirish: nomi, belgisi yoki raqami", placeholder="Masalan: Temir yoki Fe yoki 26")
    if q:
        results = []
        q_lower = q.lower()
        for z in range(1, 119):
            if (q_lower in S[z-1].lower() or q_lower in N[z-1].lower() or q == str(z)):
                results.append({"Z": z, "Belgi": S[z-1], "Nomi": N[z-1], "Massa": M[z-1]})
        if results:
            st.dataframe(results)
        else:
            st.warning("Hech narsa topilmadi")

with tab3:
    st.subheader("Proton, neytron, elektron kalkulyatori")
    formula = st.text_input("Formula", value="H2SO4", placeholder="H2SO4, Ca(OH)2, Al2(SO4)3")
    if st.button("Hisobla") or formula:
        res = calculate(formula)
        if "error" in res:
            st.error(res["error"])
        else:
            st.success(f"Formula: **{res['formula']}**")
            st.write(f"**Umumiy massa:** {res['mass']:.3f} g/mol")
            st.table(res["details"])
            st.metric("Protonlar (p)", res["total_p"])
            st.metric("Neytronlar (n)", res["total_n"])
            st.metric("Elektronlar (e)", res["total_e"])

with tab4:
    st.subheader("Test")
    if "quiz" not in st.session_state:
        st.session_state.quiz = None
    if st.button("Yangi test boshlash"):
        import random
        order = list(range(1, 119))
        random.shuffle(order)
        st.session_state.quiz = {"order": order[:10], "i": 0, "sc": 0, "mode": st.radio("Rejim", ["Belgi → Nomi", "Nomi → Belgi", "Raqam → Belgi"])}
    if st.session_state.quiz and st.session_state.quiz["i"] < 10:
        qz = st.session_state.quiz
        z = qz["order"][qz["i"]]
        mode = qz["mode"]
        if mode == "Belgi → Nomi":
            st.write(f"**{S[z-1]}** — bu qaysi element?")
            options = [N[z-1]] + random.sample([N[i] for i in range(118) if i != z-1], 3)
        elif mode == "Nomi → Belgi":
            st.write(f"**{N[z-1]}** — belgisi nima?")
            options = [S[z-1]] + random.sample([S[i] for i in range(118) if i != z-1], 3)
        else:
            st.write(f"**{z}** — belgisi nima?")
            options = [S[z-1]] + random.sample([S[i] for i in range(118) if i != z-1], 3)
        random.shuffle(options)
        choice = st.radio("Tanlang", options, key=f"q{qz['i']}")
        if st.button("Javob berish"):
            correct = S[z-1] if mode != "Belgi → Nomi" else N[z-1]
            if choice == correct:
                qz["sc"] += 1
                st.success("To'g'ri!")
            else:
                st.error(f"Noto'g'ri. To'g'ri javob: {correct}")
            qz["i"] += 1
            st.rerun()
    elif st.session_state.quiz:
        st.success(f"Test yakunlandi! Natija: {st.session_state.quiz['sc']}/10")

st.sidebar.info("Bu — original HTML/JS ilovaning Python (Streamlit) versiyasi. To'liq vizual effektlar, 3D atom va animatsiyalar uchun originalni ishlating.")

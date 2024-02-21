# 🪝Phishing?

**Voice Phishing Detection and Prevention Education Application**


## 🦁 Team

- `Taeyeon Ahn`:  PM, Design, Service planning and presentation
- `Sihyeong Park` : Frontend(Android App Develop)
- `Yujin Han` : Building a Voice Phishing Keyword Analysis Algorithm
- `Jihyeon Seo` : Building a Voice Phishing Keyword Analysis Algorithm, API Integration
  

## 🎯 Project Goal

- Prevent voice phishing in advance, help application users become aware of it when voice phishing comes, and educate them on how to deal with it!
  

## 🔍 Features

- Warning users of the dangers of voice phishing **when receiving calls**
- Remind the user that the call they just made may be voice phishing, **after the call**
- **After analyzing** the content of the call, the user is informed that a voice phishing keyword has been detected and a countermeasure is provided according to the type of voice phishing

![스크린샷 2024-02-21 232510](https://github.com/seozihyeon/2024-Solution-Challenge/assets/110870960/1f25abf6-e5aa-4cc4-99f1-552029d967ec)

## 🔧 How to Use

- **Frontend**
1. Install and run apk on Android device

- **Backend**

 ※ Already distributed through GCP. Below is a run guide in your local environment

1. Download [stt.py](http://stt.py) 
2. Install the necessary packages

```powershell
pip install boto3
pip install Flask
pip install SpeechRecognition
pip install librosa
```

3. Run code

```powershell
sudo python3 stt.py
```

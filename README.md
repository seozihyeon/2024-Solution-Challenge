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

![Untitled](%F0%9F%AA%9DPhishing%20bc0c4e5de73446d6b9dbd8879600f8fa/Untitled.png)

![Untitled](%F0%9F%AA%9DPhishing%20bc0c4e5de73446d6b9dbd8879600f8fa/Untitled%201.png)

![Untitled](%F0%9F%AA%9DPhishing%20bc0c4e5de73446d6b9dbd8879600f8fa/Untitled%202.png)


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

1. Run code

```powershell
sudo python3 stt.py
```

          x = 1+2
import urllib.request

def check_site(url):
    try:
        status = urllib.request.urlopen(url).getcode()
        if status == 200:
            print(f"✅ {url} is UP and running!")
        else:
            print(f"⚠️ {url} returned status: {status}")
    except Exception as e:
        print(f"❌ {url} is DOWN! Error: {e}")
if __name__ == "__main__":
    # You can change this to any website you want to monitor
    check_site("https://www.google.com")

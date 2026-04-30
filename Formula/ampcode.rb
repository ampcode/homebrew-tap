class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777525425-gadc8b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777525425-gadc8b1/amp-darwin-arm64"
      sha256 "2c9f01f79ae39442e480acea2572e68acc9baae90ffc31b56bc0f6a02df07bbb"
    else
      url "https://static.ampcode.com/cli/0.0.1777525425-gadc8b1/amp-darwin-x64"
      sha256 "da8ee9748a02a20453a6d2708774cb070925fbb5abfa2c8ef7d1536ebb512fff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777525425-gadc8b1/amp-linux-arm64"
      sha256 "af2fa5d2b5510b9142d68771f2289f6b3cb4b3321341413d3c10fd0528d42b07"
    else
      url "https://static.ampcode.com/cli/0.0.1777525425-gadc8b1/amp-linux-x64"
      sha256 "9e3a76ad3a6f2f1a7332e9ef5a9db3ebc4e9169bf813be802cf2dee22c047eb6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

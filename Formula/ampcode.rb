class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784073393-g9a3a12"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784073393-g9a3a12/amp-darwin-arm64"
      sha256 "e172c8c0e7a516aa0a6a3b63efb369dd584bc1aab2202aa39bd2fed2d4858a5a"
    else
      url "https://static.ampcode.com/cli/0.0.1784073393-g9a3a12/amp-darwin-x64"
      sha256 "74cfb68dd717e6df568bc7167876d12bb12f0a411af013dbfb46bfa311e7b4b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784073393-g9a3a12/amp-linux-arm64"
      sha256 "659d19eca3b8fdbbc7032e3127bcd944f37419dc9a9016c16e27a97be8f54e12"
    else
      url "https://static.ampcode.com/cli/0.0.1784073393-g9a3a12/amp-linux-x64"
      sha256 "628bd7520993eeeb9037f928d2a7ab6943bb2742a2bf02e4c08353a2c8f034d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

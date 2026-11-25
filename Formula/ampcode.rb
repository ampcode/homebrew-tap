class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795595990-g1e82b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795595990-g1e82b4/amp-darwin-arm64"
      sha256 "56cccb5ddfa5b567bb53acbe9d19b04ef6d3e7e262cfd0db543cb22b45f9928a"
    else
      url "https://static.ampcode.com/cli/0.0.1795595990-g1e82b4/amp-darwin-x64"
      sha256 "57ff3c2376798a0769677350cb761835613da50d2a024130f798a0f16ed44b67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795595990-g1e82b4/amp-linux-arm64"
      sha256 "53102c6c4e995e59f3f94e003ce93b908b60f21402f9c9a5d11b765ce863f6b2"
    else
      url "https://static.ampcode.com/cli/0.0.1795595990-g1e82b4/amp-linux-x64"
      sha256 "c77bc1abf0c15d62fb1fdf2bde913bf07cf053a693471acfbdfd98551940eed1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

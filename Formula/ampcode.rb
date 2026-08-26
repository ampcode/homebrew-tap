class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787771475-g4e309b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787771475-g4e309b/amp-darwin-arm64"
      sha256 "b46b989ac06954f013166238e9a81d2e7a528cbe10a64192b049d765a57082d4"
    else
      url "https://static.ampcode.com/cli/0.0.1787771475-g4e309b/amp-darwin-x64"
      sha256 "bba148132b48d3e35582ab677ee8fdfd7cb593fe63a4d876f950b1c3ae308e3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787771475-g4e309b/amp-linux-arm64"
      sha256 "1aaad4b8ef3005c8f19f8eedc42ccc755bb010ce89e99ad9531ca35976773ac8"
    else
      url "https://static.ampcode.com/cli/0.0.1787771475-g4e309b/amp-linux-x64"
      sha256 "4db90284fa84a774fc53a07b21420f67549a218697e035d1dbca8e5ab8c5169c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

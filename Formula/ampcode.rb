class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792771240-g0a4cf0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792771240-g0a4cf0/amp-darwin-arm64"
      sha256 "96a57a3c0cbc054b23385a8b70200df758a355ed2aa7c2b1d99b288163f867bc"
    else
      url "https://static.ampcode.com/cli/0.0.1792771240-g0a4cf0/amp-darwin-x64"
      sha256 "ae7160486b7f77934e7976096eb5190c82d0d7d5715c8d8f7e7bb9330f015638"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792771240-g0a4cf0/amp-linux-arm64"
      sha256 "197b69b8ce4703d7aa709f8356ef7a66f1b07b005a1aded68ff86a9c53c65976"
    else
      url "https://static.ampcode.com/cli/0.0.1792771240-g0a4cf0/amp-linux-x64"
      sha256 "be25ac2e8dc0e53f59872f9bc7d8d845e0c98dc0f9813a669784f71a0ef4413e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

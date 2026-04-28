class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777367723-gbe5530"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777367723-gbe5530/amp-darwin-arm64"
      sha256 "f4bb78ce861b6a670787f482e7f5535c4a48d9c057f9194f0c857cf30a18430b"
    else
      url "https://static.ampcode.com/cli/0.0.1777367723-gbe5530/amp-darwin-x64"
      sha256 "173c51f9de48a973b2da1e4c94551d93d7e20f9c095f9db639cd6f0702766f90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777367723-gbe5530/amp-linux-arm64"
      sha256 "724cadddc89e9eaf0cd10175153684099b9d8eb9f46ec106bd41a60f97d8b503"
    else
      url "https://static.ampcode.com/cli/0.0.1777367723-gbe5530/amp-linux-x64"
      sha256 "3400ecb8e6118072e0d2af0d4b52325ee0382ed9a93aed6c50faa48e3fc4ea70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

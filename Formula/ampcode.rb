class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783096150-gb3b8fd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783096150-gb3b8fd/amp-darwin-arm64"
      sha256 "50d5c5ee55755380f41025d41c0be1f7001e831a16b1fce060482e1930ad11bd"
    else
      url "https://static.ampcode.com/cli/0.0.1783096150-gb3b8fd/amp-darwin-x64"
      sha256 "c5d2f4180ea2def80defb43136524990325a77b366f60f0cba375599f078a190"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783096150-gb3b8fd/amp-linux-arm64"
      sha256 "59f0a8e69b6d77faf9a5426c7d1d2fa0ba6ac8e260d71ee6694c5036c1e895f5"
    else
      url "https://static.ampcode.com/cli/0.0.1783096150-gb3b8fd/amp-linux-x64"
      sha256 "1dca212256b9142a4b25fcfc57d803d80b7236e85232cca1038e384bb5879587"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

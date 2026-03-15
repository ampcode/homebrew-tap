class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773557672-g5f9bf7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773557672-g5f9bf7/amp-darwin-arm64"
      sha256 "b675569fbdbe63ca6a8ca4d78aaf425aa0cb47416ddd7047b773f9ba89e135fa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773557672-g5f9bf7/amp-darwin-x64"
      sha256 "9d661856d0f5dc18ea3b144508870875e114ec0f663a3b5eef1c96e897c73dfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773557672-g5f9bf7/amp-linux-arm64"
      sha256 "8a12dd839e96576ad6442f77f28ded06b27476f9194f19ff2ff6c6ccbf57f71d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773557672-g5f9bf7/amp-linux-x64"
      sha256 "914c864812d996a9c7270f5adc652bbc279773802139d0160c7f6005c6e06abe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

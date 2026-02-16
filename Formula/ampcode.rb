class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771272191-g0d8a46"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771272191-g0d8a46/amp-darwin-arm64"
      sha256 "7f66e582365dfe1a159b818bd58f14e0505f9662eb9b0b4d3f9fa97c4e9aa30a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771272191-g0d8a46/amp-darwin-x64"
      sha256 "bdff97720a640d145ea5d2d0898a27ff6bcb2af370fcbfc7de8a0c7caa431f9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771272191-g0d8a46/amp-linux-arm64"
      sha256 "5233889364c3924a611d9a89dc08cea79e302328684cf23ab042f5d52742222c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771272191-g0d8a46/amp-linux-x64"
      sha256 "c9a32d6fb57043186aa2506c4f497f068d75ed0c6aa806c180966fb9c4f04521"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

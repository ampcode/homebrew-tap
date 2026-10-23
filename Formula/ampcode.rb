class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792713681-g9b55f0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792713681-g9b55f0/amp-darwin-arm64"
      sha256 "597513457ae4c10797fc8a0f8879c01db1c863adeb4118549659a3574a66ac58"
    else
      url "https://static.ampcode.com/cli/0.0.1792713681-g9b55f0/amp-darwin-x64"
      sha256 "4a99f33c37ef034a1516c3bbb4ed9d7486d22d4b0fdf1c53fe7f7e61cf9e4365"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792713681-g9b55f0/amp-linux-arm64"
      sha256 "96384e347accb607855dba7b9956c93fb87928e8b4e1d7373605f637ee28c0ae"
    else
      url "https://static.ampcode.com/cli/0.0.1792713681-g9b55f0/amp-linux-x64"
      sha256 "3589750b6218d5693ea40489a970a7885a84ce7498ee3205669cf6593b501c19"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

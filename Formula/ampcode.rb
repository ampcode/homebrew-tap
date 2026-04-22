class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776816485-gff243b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776816485-gff243b/amp-darwin-arm64"
      sha256 "55be76abb86359589cc6d6cbc42ed727f67683691e208797404eb352d0a115ad"
    else
      url "https://static.ampcode.com/cli/0.0.1776816485-gff243b/amp-darwin-x64"
      sha256 "e3a8e55e4229832f5702bdaae925b5c5a19abe5b4d7396caccd305f131205d3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776816485-gff243b/amp-linux-arm64"
      sha256 "c1a29de533d6b792b85015baf9d3cdbc0a095ff11b4751f58e01963540c7c72f"
    else
      url "https://static.ampcode.com/cli/0.0.1776816485-gff243b/amp-linux-x64"
      sha256 "eb748960d80669369580916c360ac7f25b40aaa8aae74c5a405da32104d7ddd7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

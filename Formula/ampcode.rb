class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785414570-ga1c034"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785414570-ga1c034/amp-darwin-arm64"
      sha256 "29991905c502c2a9819860ba90f2ac4b8928ff4f7377aa324156ef4d5ea06470"
    else
      url "https://static.ampcode.com/cli/0.0.1785414570-ga1c034/amp-darwin-x64"
      sha256 "44f18ca8fa6b65bfda874a7dbdc55f5f386c9136a52ca334ab21c046686e4989"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785414570-ga1c034/amp-linux-arm64"
      sha256 "50aac57bfdcfab45e5a464b0df8e69cfbc5c583b454b047bbaa4492de4da005f"
    else
      url "https://static.ampcode.com/cli/0.0.1785414570-ga1c034/amp-linux-x64"
      sha256 "095d2c6c8daeb82bd1b978e1fb069d29df946bef4d5bc2605b9ca45babe204bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

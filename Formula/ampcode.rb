class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778748691-gbc6dba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778748691-gbc6dba/amp-darwin-arm64"
      sha256 "8f66114e756e28642659334f5071d35511093b81619d5e9213089dd926f68fda"
    else
      url "https://static.ampcode.com/cli/0.0.1778748691-gbc6dba/amp-darwin-x64"
      sha256 "0db4f87e84871f9c9543d4ccbd21e51e463b95719bccc4771de1cfb246033a77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778748691-gbc6dba/amp-linux-arm64"
      sha256 "7660ca1865500bbc20738784ad0bdfb0e40455a6c068d8c35a878888798ef79a"
    else
      url "https://static.ampcode.com/cli/0.0.1778748691-gbc6dba/amp-linux-x64"
      sha256 "c228d140e3a6418c9c2afd77394a75c35b6c15c0cdc5afee82e148894ed983a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

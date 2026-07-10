class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783642905-gaf98d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783642905-gaf98d4/amp-darwin-arm64"
      sha256 "17b379a078f173529952c862e645011bc72655c02bb4bd73bffe3efb69b50ec1"
    else
      url "https://static.ampcode.com/cli/0.0.1783642905-gaf98d4/amp-darwin-x64"
      sha256 "88b627b96536644d744191080964e0f683a2b7a80bba0ce1f684750c75c22cb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783642905-gaf98d4/amp-linux-arm64"
      sha256 "03d02488b22701a98f173c7cc9b211be9f152d1e02a96c27a3a9213b8eef859f"
    else
      url "https://static.ampcode.com/cli/0.0.1783642905-gaf98d4/amp-linux-x64"
      sha256 "2b73fbe9654aaf811fc52c526b4697bd2b9555552f1860488f58852f5a0e05bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

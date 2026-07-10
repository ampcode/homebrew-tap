class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783715322-g80d9f1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783715322-g80d9f1/amp-darwin-arm64"
      sha256 "c2a3b91009c5c47bdf122bbbab2587a9c30e12ce1e6f9d265988411b161dbccd"
    else
      url "https://static.ampcode.com/cli/0.0.1783715322-g80d9f1/amp-darwin-x64"
      sha256 "deb09beed994a9f88eb982ff885dffea4d1565ebaea8973710ff66d862378650"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783715322-g80d9f1/amp-linux-arm64"
      sha256 "a0defc5dbd781bb211fe0f9a442f527dbe9fe7d5f1352e5f985e4eed8cc7d102"
    else
      url "https://static.ampcode.com/cli/0.0.1783715322-g80d9f1/amp-linux-x64"
      sha256 "10abef60919d322a7f234f9eec253d99564b6f23442f4ae22f36375db86c1823"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

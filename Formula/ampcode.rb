class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793448038-gf582b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793448038-gf582b4/amp-darwin-arm64"
      sha256 "168c1c58cae9ac57f1903cee5c48064cc15fb9a672bbc26c24d20b8ade94d81e"
    else
      url "https://static.ampcode.com/cli/0.0.1793448038-gf582b4/amp-darwin-x64"
      sha256 "8ee32def06be31d82eaf79f39f2bc75b732014b78708c73e2ec7a347edbeeb11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793448038-gf582b4/amp-linux-arm64"
      sha256 "a042c567e5cb8e2943519c7fb67bdf771bf8f989391c60aef7885caf721764bf"
    else
      url "https://static.ampcode.com/cli/0.0.1793448038-gf582b4/amp-linux-x64"
      sha256 "03ad508b2bf03285064821dd2b52f1fd8b97d37f7728600d88b63a9ddaac53a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

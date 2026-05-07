class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778185482-gf00656"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778185482-gf00656/amp-darwin-arm64"
      sha256 "19476f01f922f60e074b5952f73ee8ad804cc952d34fa6a3974f7f06e51d0dc4"
    else
      url "https://static.ampcode.com/cli/0.0.1778185482-gf00656/amp-darwin-x64"
      sha256 "a68ec8702026c69d66e6c8691e62e428b7163755b321c73e969e3ee05f063cf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778185482-gf00656/amp-linux-arm64"
      sha256 "6e279930f47bb3a1e4977a78217a46e0afe5baf0953b7cbe24e9385643387302"
    else
      url "https://static.ampcode.com/cli/0.0.1778185482-gf00656/amp-linux-x64"
      sha256 "4bf05ef0faf9a661f9a443b1ebfcd8764baf55c0d1af43f95b97347030c28c8f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

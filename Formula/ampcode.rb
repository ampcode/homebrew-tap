class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793908835-gdd8c45"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793908835-gdd8c45/amp-darwin-arm64"
      sha256 "c816c97b0f3e5719d5456f39241a18921eba01f13b37088970322fa1fd195f62"
    else
      url "https://static.ampcode.com/cli/0.0.1793908835-gdd8c45/amp-darwin-x64"
      sha256 "b33963a755c20f3842f39741088b2a47823b04a486fdf3d2f8d054cf79740682"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793908835-gdd8c45/amp-linux-arm64"
      sha256 "8c75fa8cda02a1035c08ca06aff7c7863a2d3914b1c65f7c56b14e742f5d2cb1"
    else
      url "https://static.ampcode.com/cli/0.0.1793908835-gdd8c45/amp-linux-x64"
      sha256 "b56808ccec49dfc85a8773939023adabb928c39ca3f9c80fa9b56539b6a6ff3d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.13.0.tgz"
      sha256 "e92b41075907c38086dc68e04a15f6ee238a4ab6240873605f04e97163ad2d85"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.13.0.tgz"
      sha256 "51e159454539ff0af64ff64ed8475b8667a1fbe78af70d3b6960fb1be2521b70"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.13.0.tgz"
      sha256 "7d3083d553199ce675fccbec2e6f6113923e9a8bb2e64fc5952476286aa47f3d"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.13.0.tgz"
      sha256 "622ae9507278ae7540b9c2001ca21017a2d0cf74c1a688a74ff22a770244d289"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end

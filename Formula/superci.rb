# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.8.tgz"
      sha256 "839579167b6572bee9d73ee559f2b1e3df40fbfb8f234f34ee64ee22edf3faac"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.8.tgz"
      sha256 "1e82fec6c411d68fabbd9a099ee03fdbe4532e2b56d3afa913423bd90b18619a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.8.tgz"
      sha256 "01f86c68396c635168d29e8fc44a7c34abdc29419297bead7c712f977acdf8f0"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.8.tgz"
      sha256 "c8d47b3e226c65e3728d44ff2321ec02a93c209a155547fe5970287dda1e147e"
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
